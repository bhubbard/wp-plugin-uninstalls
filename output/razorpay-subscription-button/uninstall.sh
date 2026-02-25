#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'title_field'
wp option delete 'description_field'
wp option delete 'key_id_field'
wp option delete 'key_secret_field'
wp option delete 'payment_action_field'

