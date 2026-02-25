#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idt_show_title'
wp option delete 'idt_testimonial_heading'
wp option delete 'idt_testimonial_desc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idt_testimonial_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idt_testimonial_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idt_testimonial_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idt_testimonial_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idt_t_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idt_t_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idt_t_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idt_t_author'"
