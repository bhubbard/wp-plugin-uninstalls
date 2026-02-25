#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quran_arabicfont'
wp option delete 'quran_wordspacing'
wp option delete 'quran_template'
wp option delete 'border_quran_color'
wp option delete 'quran_recitator'
wp option delete 'quran_languages'
wp option delete 'quran_changesuratxt'
wp option delete 'quran_changelangtxt'
wp option delete 'quran_changerecitatortxt'
wp option delete 'text_quran_title'
wp option delete 'background_quran_title'
wp option delete 'color_quran_number'
wp option delete 'background_quran_number'
wp option delete 'text_quran_trans'
wp option delete 'background_quran_trans'
wp option delete 'text_quran_arabic'
wp option delete 'background_quran_arabic'
wp option delete 'quran_custum_css'
wp option delete 'template_quran'
wp option delete 'verse_quran_number'

# Delete Transients
wp transient delete 'quran-options'

