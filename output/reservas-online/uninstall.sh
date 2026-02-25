#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpReservas-email'
wp option delete 'wpReservas-password'
wp option delete 'wpReservas-installed'
wp option delete 'wp-reservas'

