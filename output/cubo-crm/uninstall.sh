#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cubo_crm_form_settings'
wp option delete 'cubo_crm_global_token'
wp option delete 'cubo_crm_smtp_settings'

