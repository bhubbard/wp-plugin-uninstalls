#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsa_subscribe_author_db_version'
wp option delete 'wpsa_mail_settings'
wp option delete 'wpsa_general_settings'

