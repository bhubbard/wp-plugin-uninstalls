#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apikey'
wp option delete 'oaframewidth'
wp option delete 'oaframeheight'
wp option delete 'img_oa'
wp option delete 'logo'
wp option delete 'fblogin'
wp option delete 'oalang'
wp option delete 'oaltype'
wp option delete 'oafstext'
wp option delete 'oafshtext'
wp option delete 'oafsctext'
wp option delete 'oaalign'
wp option delete 'oaalignb'

