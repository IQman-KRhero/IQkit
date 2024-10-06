# copyright 2024 KRhero-IQman https://github.com/IQman-KRhero/IQkit
# github https://github.com/IQman-KRhero/IQkit
# discord - krheroyt

import tkinter as tk
from tkinter import ttk
import itertools
import hashlib
import time
import threading

def generate_password_combinations(password_length):
    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    combinations = itertools.product(characters, repeat=password_length)
    for combination in combinations:
        yield "".join(combination)

def hash_password(password):
    return hashlib.sha256(password.encode()).hexdigest()

def crack_password(hashed_password, password_length):
    for password in generate_password_combinations(password_length):
        if hash_password(password) == hashed_password:
            return password
    return None

def crack_password_ui():
    def crack_button_clicked():
        hashed_password = hashed_password_entry.get()
        password_length = int(password_length_entry.get())
        cracked_password = crack_password(hashed_password, password_length)
        if cracked_password:
            result_label.config(text=f"Password cracked: {cracked_password}")
        else:
            result_label.config(text="Password not found.")

    def animate_name():
        while True:
            for i in range(len(name_label.cget("text"))):
                name_label.config(text=name_label.cget("text")[:i+1])
                root.update()
                time.sleep(0.1)
#titleeka
    root = tk.Tk()
    root.title("Password Cracking Tool for kd from kr")
    root.geometry("400x200")
#main name eka
    name_label = ttk.Label(root, text="KRhero-PW-Cracker", font=("Arial", 30))
    name_label.pack()

    hashed_password_label = ttk.Label(root, text="Hashed Password:")
    hashed_password_label.pack()
    hashed_password_entry = ttk.Entry(root)
    hashed_password_entry.pack()

    password_length_label = ttk.Label(root, text="Password Length:")
    password_length_label.pack()
    password_length_entry = ttk.Entry(root)
    password_length_entry.pack()

    crack_button = ttk.Button(root, text="Crack Password", command=crack_button_clicked)
    crack_button.pack()

    result_label = ttk.Label(root, text="")
    result_label.pack()

    #animate_name_thread = threading.Thread(target=animate_name)
    #animate_name_thread.start()

    root.mainloop()

# Run the password cracking tool UI
crack_password_ui()