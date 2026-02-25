#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forminix_modules'
wp option delete 'forminix_forms'
wp option delete 'forminix_form_settings'
wp option delete 'forminix_entries'
wp option delete 'forminix_entry_settings'

