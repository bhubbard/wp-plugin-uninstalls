#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'izcrmef_app_conf'
wp option delete 'izcrmef_db_version'
wp option delete 'izcrmef_installed'
wp option delete 'izcrmef_version'
wp option delete 'btcbi_elementor_test'

