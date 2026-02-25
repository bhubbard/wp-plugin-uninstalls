#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'livestreamchurch_page_live_id'
wp option delete 'livestreamchurch-channelid'
wp option delete 'livestreamchurch-offlinevideo'
wp option delete 'livestreamchurch-logoimage'
wp option delete 'livestreamchurch-logoimageprofile'
wp option delete 'livestreamchurch-videotitle'
wp option delete 'livestreamchurch-descriptiontext'
wp option delete 'livestreamchurch-offeringlink'

