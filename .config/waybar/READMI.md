# Dotfiles
[![chat-bored](https://img.shields.io/badge/endpoint?url=https://b012ed.github.io/chat-B012ED.json&style=?style=for-the-badge&logo=steam)](https://b012ed.github.io/chat.html)

[![YouTube](https://img.shields.io/badge/endpoint?url=https://b012ed.github.io/B012ED.json&style=?style=for-the-badge&logo=youtube)](https://www.youtube.com/channel/UCIqT1hHplli4XvJj7ZUEMzA) 

[![Tools-bored](https://img.shields.io/badge/endpoint?url=https://b012ed.github.io/B012ED-Tools.json&style=?style=for-the-badge&logo=appveyor)](https://www.studypool.com/notebank/search?notebank_qs=b012ed&notebank_qs_university=)

1. Install python-pywal
2. Run pywal, for example: wal -i ~/.config/wallpapers/african-light.jpg
3. Wait until pywal extracts the colors
4. Run cat ~/.cache/wal/colors-waybar.css

If successful: You will see CSS code containing color definitions (@define-color ...). This means your Pywal is correctly configured for Waybar!

To display the waybar icon, we need “JerBrainsMonoNerdFont”  https://www.nerdfonts.com/font-downloads and create a folder “mkdir -p ~/.local/share/fonts” paste everything cp Jet* ~/.local/share/fonts
