#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gesundheitsdatenbefreier_mail_text'
wp option delete 'gesundheitsdatenbefreier_threshold'
wp option delete 'gesundheitsdatenbefreier_info_text'
wp option delete 'gesundheitsdatenbefreier_mail_subject'
wp option delete 'gesundheitsdatenbefreier_good_bye_text'
wp option delete 'gesundheitsdatenbefreier_counter'

