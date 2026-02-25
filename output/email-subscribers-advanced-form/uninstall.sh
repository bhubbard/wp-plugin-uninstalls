#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'es_af_pluginversion'
wp option delete 'esaf_gdpr_consent_notify_group_selector'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_group_selector'"
wp option delete 'ig_es_optintype'
wp option delete 'ig_es_welcomeemail'
wp option delete 'active_sitewide_plugins'

