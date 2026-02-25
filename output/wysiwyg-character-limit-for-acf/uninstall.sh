#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acf_wysiwyg_cl_settings'
wp option delete 'acf_wysiwyg_cl_tracking_optin'
wp option delete 'acf_wysiwyg_cl__plugin_version'
wp option delete 'acf_wysiwyg_cl_plugin_version'
wp option delete 'acf_wysiwyg_cl_global_limit'

