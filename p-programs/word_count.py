def count_error_occurrences(file_path):
    error_count = 0
    try:
        with open(file_path, 'r') as file:
            for line in file:
                error_count += line.count("ERROR")
        print(f'The word "ERROR" appeared {error_count} times in the log file.')
    except FileNotFoundError:
        print(f"File not found: {file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage:
log_file_path = "p-programs/logfile"  # Replace with your actual log file path
count_error_occurrences(log_file_path)
