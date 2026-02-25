#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hptpd_plugin_version'
wp option delete 'hptpd_pub_data_from_approval_form'

