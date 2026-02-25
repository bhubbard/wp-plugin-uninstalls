#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smwpp_align'
wp option delete 'smwpp_isize'
wp option delete 'smwpp_fbpage'
wp option delete 'smwpp_tweetpage'
wp option delete 'smwpp_linkedinpage'
wp option delete 'smwpp_fburl'
wp option delete 'smwpp_tweeturl'
wp option delete 'smwpp_linkedinurl'
wp option delete 'smwpp_location'

