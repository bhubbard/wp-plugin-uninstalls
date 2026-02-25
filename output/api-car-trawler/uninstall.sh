#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartrawler_primary'
wp option delete 'cartrawler_secondary'
wp option delete 'cartrawler_complimentary'
wp option delete 'cartrawler_version'
wp option delete 'cartrawler_clientid'
wp option delete 'cartrawler_title'
wp option delete 'cartrawler_theme'
wp option delete 'cartrawler_title_text'
wp option delete 'my_first_text'

