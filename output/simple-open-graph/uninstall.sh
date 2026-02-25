#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ogtype'
wp option delete 'fbimage'
wp option delete 'ogdescription'
wp option delete 'fbadmin'
wp option delete 'fbpageid'
wp option delete 'fbappid'

