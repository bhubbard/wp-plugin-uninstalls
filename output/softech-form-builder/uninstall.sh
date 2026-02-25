#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'softech_forms_db_version'
wp option delete 'softech_smtp_host'
wp option delete 'softech_smtp_port'
wp option delete 'softech_smtp_username'
wp option delete 'softech_smtp_password'
wp option delete 'softech_smtp_encryption'
wp option delete 'softech_smtp_from_email'
wp option delete 'softech_smtp_from_name'

