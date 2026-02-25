#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mkFacebookAppID'
wp option delete 'mkFacebookHashtag'
wp option delete 'mkTwitterContent'
wp option delete 'mkWarningTextFacebook'
wp option delete 'mkWarningText'
wp option delete 'mkForLoggedin'
wp option delete 'warningText'
wp option delete 'warningTextFacebook'

