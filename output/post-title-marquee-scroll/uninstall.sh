#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptms_scrollamount'
wp option delete 'ptms_scrolldelay'
wp option delete 'ptms_direction'
wp option delete 'ptms_style'
wp option delete 'ptms_noofpost'
wp option delete 'ptms_categories'
wp option delete 'ptms_orderbys'
wp option delete 'ptms_order'
wp option delete 'ptms_spliter'
wp option delete 'ptms_title'

