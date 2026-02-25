#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'purlemURI'
wp option delete 'purlemID'
wp option delete 'purlapi'
wp option delete 'showPurlForm'

