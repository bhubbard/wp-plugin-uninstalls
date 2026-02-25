#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddy_birthday_field_id'
wp option delete 'buddy_birthday_default_range'
wp option delete 'buddy_birthday_default_limit'

