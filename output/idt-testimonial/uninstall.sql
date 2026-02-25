-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idt_show_title', 'idt_testimonial_heading', 'idt_testimonial_desc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('idt_testimonial_logo', 'testimonial_editor', 'idt_t_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('idt_testimonial_logo', 'testimonial_editor', 'idt_t_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('idt_testimonial_logo', 'testimonial_editor', 'idt_t_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('idt_testimonial_logo', 'testimonial_editor', 'idt_t_author');

