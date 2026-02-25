#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deletepages_410_max_404s'
wp option delete 'deletepages_410_options_version'
wp option delete 'deletepages_410_links_list'
wp option delete 'deletepages_410_all_in_list'

