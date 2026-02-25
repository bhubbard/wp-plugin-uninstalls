#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selectcategory_css'
wp option delete 'selectcategory_order'
wp option delete 'selectcategory_num'
wp option delete 'selectcategory_maxnum'
wp option delete 'selectcategory_minnum'

