#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fakeloader-delay-time'
wp option delete 'fakeloader-z-index'
wp option delete 'fakeloader-spinner'
wp option delete 'fakeloader-bg-color'
wp option delete 'fakeloader-is-image'
wp option delete 'fakeloader-spinner-file'

