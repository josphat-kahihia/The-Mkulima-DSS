import os
from datetime import datetime

def create_multi_line_comment():
    # Prompt user for their name
    user_name = input("Enter your name: ")

    # Get current date and time
    current_datetime = datetime.now().strftime("%d/%m/%Y at %I:%M %p")

    # Create the multi-line comment
    comment = (
        "/**\n"
        " * One_script_for_all.sql - Holds all the scripts in this directory\n"
        " *\n"
        " * Description: All scripts are put here for easier execution.\n"
        " * If the last modified date is later than any of the files, update it,\n"
        " * or run the individual scripts in the order provided to by the README\n"
        " * at the base of this directory.\n"
        " *\n"
        " * Files (SQL Scripts) copied here:\n"
        " * 1. Mkulima_database.sql\n"
        " * 2. Inserting_regions.sql\n"
        " * 3. Inserting_county.sql\n"
        " * 4. Inserting_crops.sql\n"
        " * 5. Inserting_seeds.sql\n"
        " * 6. Inserting_fertilizer.sql\n"
        " * 7. Inserting_crop_fertilizer.sql\n"
        " *\n"
        f" * Last Generated: {current_datetime} by {user_name}\n"
        " * Up to date: Yes[~] No[]\n"
        " */\n\n"
    )

    # Write the comment to One_script_for_all.sql
    with open("One_script_for_all_py.sql", "w") as file:
        file.write(comment)

    # Append various scripts/commands
    with open("One_script_for_all_py.sql", "a") as file:
        # Read and append content from each script file
        for script_file in [
            "Mkulima_database.sql",
            "Inserting_regions.sql",
            "Inserting_county.sql",
            "Inserting_crops.sql",
            "Inserting_seeds.sql",
            "Inserting_fertilizer.sql",
            "Inserting_crop_fertilizer.sql"
        ]:
            with open(script_file, "r") as script:
                file.write(script.read() + "\n\n")

if __name__ == "__main__":
    create_multi_line_comment()
    print("Script created successfully in One_script_for_all_py.sql.")
