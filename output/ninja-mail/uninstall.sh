#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninja_forms_transactional_email_enabled'
wp option delete 'ninja_forms_transactional_email_debug'

