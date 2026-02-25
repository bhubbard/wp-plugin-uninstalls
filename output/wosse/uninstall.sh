#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HMYWSK_Degiskenler_ayarlar'
wp option delete 'HMYWSK_Degiskenler_sozlesme1'
wp option delete 'HMYWSK_Degiskenler_sozlesme2'
wp option delete 'HMYWSK_Degiskenler_sozlesme3'

# Delete Transients
wp transient delete 'misha_upgrade_YOUR_PLUGIN_SLUG'

