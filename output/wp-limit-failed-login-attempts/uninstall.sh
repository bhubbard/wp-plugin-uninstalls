#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPLFLA_options'
wp option delete 'Block_hash_code'
wp option delete 'WPLFLA_version'
wp option delete 'Block_hash_code_range_ip'
wp option delete 'Block_hash_code_country'

