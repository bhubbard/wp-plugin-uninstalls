#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floating_contacts_options'
wp option delete 'floating_contacts_version'
wp option delete 'floating_contacts_install_date'

