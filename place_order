import tkinter as tk
from tkinter import messagebox

def submit_package():
    name = name_entry.get()
    contact = contact_entry.get()
    address = address_entry.get()
    transaction_mode = transaction_mode_var.get()
    weight = weight_entry.get()
    dimension = dimension_entry.get()

    if weight != "2.5":
        messagebox.showerror("Error", "Weight exceeded")
    elif dimension != "30*20*10":
        messagebox.showerror("Error", "Dimension exceeded")
    else:
        messagebox.showinfo("Success", "Package successfully registered")

app = tk.Tk()
app.title("Packaging details")
app.geometry("500x500")

name_label = tk.Label(app, text="Name:")
name_label.pack()
name_entry = tk.Entry(app)
name_entry.pack()

contact_label = tk.Label(app, text="Contact:")
contact_label.pack()
contact_entry = tk.Entry(app)
contact_entry.pack()

address_label = tk.Label(app, text="Address:")
address_label.pack()
address_entry = tk.Entry(app)
address_entry.pack()

transaction_mode_label = tk.Label(app, text="Transaction Mode:")
transaction_mode_label.pack()
transaction_mode_options = ["Card", "Netbanking", "UPI_id", "COD"]
transaction_mode_var = tk.StringVar(app)
transaction_mode_var.set(transaction_mode_options[0])
transaction_mode_menu = tk.OptionMenu(app, transaction_mode_var, *transaction_mode_options)
transaction_mode_menu.pack()

weight_label = tk.Label(app, text="Weight (kg):")
weight_label.pack()
weight_entry = tk.Entry(app)
weight_entry.pack()

dimension_label = tk.Label(app, text="Dimension (cm):")
dimension_label.pack()
dimension_entry = tk.Entry(app)
dimension_entry.pack()

submit_button = tk.Button(app, text="Submit", command=submit_package)
submit_button.pack()

app.mainloop()
