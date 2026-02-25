#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmf-setting'
wp option delete 'mmf-setting-admin'
wp option delete 'mmf-setting-ios'
wp option delete 'mmf-setting-iosflat'
wp option delete 'mmf-setting-androidhirez'
wp option delete 'mmf-setting-androidreg'

