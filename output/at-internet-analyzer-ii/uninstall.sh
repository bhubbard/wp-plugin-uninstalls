#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xtsd_value'
wp option delete 'xtsite_value'
wp option delete 'xtdmc_value'
wp option delete 'homepage_ergo'
wp option delete 'posts_ergo'
wp option delete 'pages_ergo'

