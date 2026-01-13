def check_balance():
    if not connected:
        messagebox.showinfo("Simulation Mode",
                            "Blockchain not connected.\nSimulated Balance: 10 ETH")
        return

    try:
        balance_wei = web3.eth.get_balance(SAMPLE_ADDRESS)
        balance_eth = web3.from_wei(balance_wei, 'ether')
        messagebox.showinfo("Wallet Balance",
                            f"Wallet Address:\n{SAMPLE_ADDRESS}\n\nBalance: {balance_eth} ETH")
    except Exception as e:
        messagebox.showerror("Error", str(e))


def simulate_transaction():
    tx_details = (
        "Transaction Simulation\n\n"
        "From: Your Wallet\n"
        "To: Receiver Wallet\n"
        "Amount: 1 ETH\n\n"
        "Note: This is only a simulation.\n"
        "No real transaction is performed."
    )
    messagebox.showinfo("Transaction", tx_details)