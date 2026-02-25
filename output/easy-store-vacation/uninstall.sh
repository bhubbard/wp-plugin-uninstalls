#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vacation_text_section_on'
wp option delete 'vacation_text_section_on_notice'
wp option delete 'vacation_text_section'
wp option delete 'vacation_text_section_to'
wp option delete 'vacation_text_section_notice'

