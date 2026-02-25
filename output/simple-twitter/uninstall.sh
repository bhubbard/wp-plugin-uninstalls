#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ccbSimpleTwitter-%'"
wp option delete 'ccbSimpleTwitter-username'
wp option delete 'ccbSimpleTwitter-maxTwitt'
wp option delete 'ccbSimpleTwitter-replaceKey'
wp option delete 'ccbSimpleTwitter-replaceId'
wp option delete 'ccbSimpleTwitter-onTime'
wp option delete 'ccbSimpleTwitter-offTime'
wp option delete 'ccbSimpleTwitter-fadeTime'

