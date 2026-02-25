#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SkMenuMode'
wp option delete 'SkTRDefWidth'
wp option delete 'SkTRDefHeight'
wp option delete 'SkTRBgColor'
wp option delete 'SkTRTxtColor'
wp option delete 'SkTRBdColor'
wp option delete 'SkTRFilColor'
wp option delete 'SkTRShVolume'
wp option delete 'SkTRChType'
wp option delete 'SkTRDefPeriod'
wp option delete 'SkTRDefMarket'
wp option delete 'SkTRStatic'

