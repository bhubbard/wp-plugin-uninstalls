#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartyads_zones'
wp option delete 'smarty_new_key_valid'
wp option delete 'smartyads_site_id'
wp option delete 'smartyads_key'
wp option delete 'smartyads_host'

