#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edfw_donation_position'
wp option delete 'edfw_donation_label_text'
wp option delete 'edfw_donation_button_text'
wp option delete 'edfw_donation_button_color'
wp option delete 'edfw_donation_button_text_color'
wp option delete 'edfw_donation_note'

