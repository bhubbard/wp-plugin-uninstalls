#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zefw_element_id_counter'
wp option delete 'zefw-default-email-address'
wp option delete 'zefw_custom_emails_table_version'

