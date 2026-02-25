#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'NF_Videomail_Version'
wp option delete 'ninja_forms_version'
wp option delete 'ninja_forms_load_deprecated'

