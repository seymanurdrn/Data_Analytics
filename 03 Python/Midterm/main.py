from auth import Auth

def show_main_menu():
    print("\nMain Menu:")
    print("1. View Goals")
    print("2. Add Goal")
    print("3. Update/Delete Goal")
    print("4. Exit")


def show_user_goals(auth_manager):
    print("\nAnnual Goals:")
    goals = auth_manager.get_goals()
    if goals:
        for index, goal in enumerate(goals, start=1):
            print(f"{index}. Goal {index} - Priority: {goal['priority']}")
    else:
        print("No goals yet.")


def add_goal(auth_manager):
    print("\nAdd goal:")
    description = input("Description: ")
    priority = int(input("Priority: "))
    auth_manager.add_goal(description, priority)
    print("Goal added successfully!")


def update_or_delete_goal(auth_manager):
    print("\nView Goals:")
    show_user_goals(auth_manager)

    goals = auth_manager.get_goals()
    if not goals:
        print("No goals available for updating or deleting.")
        return

    try:
        choice = int(input("\nUpdate-Delete: Enter the goal number (for deletion): "))
        if 1 <= choice <= len(goals):
            action = input("Update (T) or Delete (F): ").lower()
            if action in ('t', 'f'):
               if action == 't':
                  description = input("New description: ")
                  priority = int(input("New priority: "))
                  auth_manager.update_goal(choice - 1, description, priority)
                  print("Goal updated successfully!")
               elif action == 'f':
                  auth_manager.delete_goal(choice - 1)
                  print("Goal deleted successfully!")
            else:
                print("Invalid operation. Please enter 'T' or 'F'.")
        else:
            print("Invalid goal number.")
    except ValueError:
        print("Invalid input. Please enter a number.")


def main(): #programın ana kontrol akışını yönetir.
    auth_manager = Auth()

    while True:
        print("\nWelcome! Please log in:")
        username = input("Username: ")
        auth_manager.login_or_signup(username)

        while auth_manager.is_authenticated():
            show_main_menu()
            choice = input("\nYour choice: ")

            if choice == '1':
                show_user_goals(auth_manager)
            elif choice == '2':
                add_goal(auth_manager)
            elif choice == '3':
                update_or_delete_goal(auth_manager)
            elif choice == '4':
                auth_manager.signout()
                print("Logging out...")
                break
            else:
                print("Invalid choice. Please try again.")


if __name__ == "__main__":
    main()