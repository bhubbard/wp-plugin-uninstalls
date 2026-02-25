#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posttitle'
wp option delete 'postdiscription'
wp option delete 'postauthor'
wp option delete 'postcategory'
wp option delete 'uploadimage'
wp option delete 'posttitleenabledisables'
wp option delete 'postdiscriptionenabledisable'
wp option delete 'postauthorenabledisable'
wp option delete 'postcategoryenabledisable'
wp option delete 'uploadimageenabledisable'
wp option delete 'posttype'
wp option delete 'posttaxonomies'
wp option delete 'autopublish'
wp option delete 'enablecaptcha'
wp option delete 'captchapublickey'
wp option delete 'guestpost'
wp option delete 'captchaprivatekey'
wp option delete 'successmessage'
wp option delete 'imagesize'
wp option delete 'productshortdiscription'
wp option delete 'producttags'
wp option delete 'tagsenabledisable'
wp option delete 'expertsenabledisable'
wp option delete 'titlerequire'
wp option delete 'featurerequire'
wp option delete 'discriptionrequire'
wp option delete 'categoryrequire'
wp option delete 'tagsrequire'
wp option delete 'expertrequire'
wp option delete 'multicategory'
wp option delete 'posttags'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest-author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
