#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hidden_stuff_active'
wp option delete 'hidden_stuff_text'
wp option delete 'hidden_stuff_button_type'

