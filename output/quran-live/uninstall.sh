#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'template_quran_live'
wp option delete 'tpl_quran_live'
wp option delete 'background_quranlive_color'
wp option delete 'quran_live_languages'
wp option delete 'quran_live_recitator'
wp option delete 'quranlive_custum_css'

# Delete Transients
wp transient delete 'quranlive-options'

