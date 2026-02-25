#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sya_dateformatchanged2012'
wp option delete 'sya_dateformatchanged2015'
wp option delete 'sya_dateformat'
wp option delete 'sya_datetitleseperator'
wp option delete 'sya_linkyears'
wp option delete 'sya_collapseyears'
wp option delete 'sya_postcount'
wp option delete 'sya_commentcount'
wp option delete 'sya_linktoauthor'
wp option delete 'sya_reverseorder'
wp option delete 'sya_prepend'
wp option delete 'sya_append'
wp option delete 'sya_excerpt'
wp option delete 'sya_excerpt_indent'
wp option delete 'sya_excerpt_maxchars'
wp option delete 'sya_show_categories'
wp option delete 'sya_show_tags'
wp option delete 'sya_showauthor'
wp option delete 'sya_showyearoverview'
wp option delete 'sya_showpostthumbnail'
wp option delete 'sya_postthumbnail_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"

