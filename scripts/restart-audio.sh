#!/bin/bash
sudo systemctl restart bluetooth.service bluetooth.target
sudo systemctl --user restart pipewire-pulse.socket pipewire.service pipewire.socket bluetooth.target
