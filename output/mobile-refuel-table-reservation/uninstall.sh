#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrtr_wochentag_zeiten'
wp option delete 'mrtr_benachrichtigungs_email'
wp option delete 'mrtr_container_background'
wp option delete 'mrtr_text_color'
wp option delete 'mrtr_button_color'
wp option delete 'mrtr_button_hover'
wp option delete 'mrtr_email_benachrichtigungen'
wp option delete 'mrtr_intervall'
wp option delete 'mrtr_spezielle_tage_konfiguration'
wp option delete 'mrtr_max_personen'
wp option delete 'mrtr_tile_background'
wp option delete 'mrtr_border_radius'
wp option delete 'mrtr_verweildauer'
wp option delete 'mrtr_restaurant_name'
wp option delete 'mrtr_ausgeschlossene_tage'
wp option delete 'mrtr_language'
wp option delete 'mrtr_mindestvorlauf_stunden'
wp option delete 'mrtr_calendar_token'
wp option delete 'mrtr_calendar_token_include_past'

# Delete Transients
wp transient delete 'mrtr_setup_wizard_completed'

