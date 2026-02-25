#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'delicious-curator-maxitems'
wp option delete 'delicious-curator-delicious-user'
wp option delete 'delicious-curator-delicious-tag'
wp option delete 'delicious-curator-author'
wp option delete 'delicious-curator-category'
wp option delete 'delicious-curator-tags'
wp option delete 'delicious-curator-post-title'
wp option delete 'delicious-curator-header'
wp option delete 'delicious-curator-footer'
wp option delete 'delicious-curator-item'
wp option delete 'delicious-curator-prev-max-date'

