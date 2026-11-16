Just a repo to store my config files. You can use it if you want. Although, they aren't for everyone.

## Install

- Clone the repository:

```bash
git clone git@github.com:OrderTheCat/archlinux-setup.git && cd archlinux-setup
```

- Run the install script:

```bash
./install.sh
```

Expected output:

```bash
Done
```

If for some reason the script doesn't execute, try making it executable first:

```bash
chmod +x install.sh
```

You also may need to delete the **kitty** folder for the kitty terminal at ~/.config:

```bash
rm -rf ~/.config/kitty
```

***(This will permanently delete all your kitty configuration!)***
