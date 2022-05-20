# This is kind-of intended as a template generator, you will most likely need to tweak the generated text to add what you want.
Write-Host "Try to keep descriptions as simple as possible."
$cha_itm_loc=Read-Host -Prompt "Are you writing a dictionary entry for a character, item, or a location in the world (type 'character', 'item', or 'location' without quotations. Quotations around examples means it affects the generation.)"

if ($cha_itm_loc -eq 'character') {
    $cha_name=Read-Host -Prompt "Enter the name of the character"
    $cha_gender=Read-Host -Prompt "Enter the gender of $cha_name ('male', 'female', or 'genderless' (robot))"
        if ($cha_gender -eq 'male') {
            $cha_gender_spec="He"
            $cha_gender_spec2="his"
            $cha_gender_spec2_c="His"
        }
        if ($cha_gender -eq 'female') {
            $cha_gender_spec="She"
            $cha_gender_spec2="her"
            $cha_gender_spec2_c="Her"
        }
        if ($cha_gender -eq 'genderless') {
            $cha_gender_spec="They"
            $cha_gender_spec2="they're"
            $cha_gender_spec2_c="They're"
        }
    $cha_species=Read-Host -Prompt "Enter the species name for $cha_name"
        if ($cha_species -ne 'human') {
            $cha_anthro=Read-Host -Prompt "Is $cha_name anthropomorphic ('yes', or 'no'.)"
        }
    $cha_skin_fur=Read-Host -Prompt "Does $cha_name have 'skin' or 'fur'"
    $cha_color=Read-Host -Prompt "Enter the $cha_skin_fur color of $cha_name"
    $cha_age=Read-Host -Prompt "Enter the age of $cha_name ('toddler', 'child', 'adolescent' (or 'teenager'), 'adult', or 'elder', or 'non-applicable' (robot))"
    $cha_height=Read-Host -Prompt "Enter the height of $cha_name ('tiny', 'short', 'average' (for the species), 'tall', or 'giant')"
    $cha_weight=Read-Host -Prompt "Enter the weight of $cha_name ('light', 'average', or 'heavy')"
    $cha_hair=Read-Host -Prompt "Enter the hair style of $cha_name (short, long, mohawk, mullet, etc.)"
    $cha_hair_color=Read-Host -Prompt "Enter the hair color of $cha_name" # Ignore if setting fur.
        $cha_personality=Read-Host -Prompt "Enter a defining personality of $cha_name (example: jolly, depressed, grumpy, apathetic, etc.)"
        $cha_traits=Read-Host -Prompt "Enter traits that define $cha_name (seperated by commas) (example: courageous, smart, silly, hot-headed, etc.)"
        $cha_likes=Read-Host -Prompt "Enter things $cha_name likes"
        $cha_dislikes=Read-Host -Prompt "Enter things $cha_name dislikes"
        $cha_fears=Read-Host -Prompt "Enter the things $cha_name is afraid of"
        $cha_gender_pref=Read-Host -Prompt "Enter the gender $cha_name prefers for a love interest ('male', 'female', or 'both')"
            if ($cha_gender -eq 'male' -and $cha_gender_pref -eq 'female') {
                $cha_gender_pref="straight"
            }
            if ($cha_gender -eq 'male' -and $cha_gender_pref -eq 'male') {
                $cha_gender_pref="gay"
            }
            if ($cha_gender -eq 'female' -and $cha_gender_pref -eq 'female') {
                $cha_gender_pref="lesbian"
            }
            if ($cha_gender -eq 'male' -and $cha_gender_pref -eq 'both') {
                $cha_gender_pref="bi-sexual"
            }
            if ($cha_gender -eq 'female' -and $cha_gender_pref -eq 'both') {
            $cha_gender_pref="bi-sexual"
            }
                $cha_clothing_head=Read-Host -Prompt "What does the character wear on $cha_gender_spec2 head"
                $cha_clothing_upper_body=Read-Host -Prompt "What does the character wear on $cha_gender_spec2 upper body"
                $cha_clothing_lower_body=Read-Host -Prompt "What does the character wear on $cha_gender_spec2 lower body"
                $cha_clothing_feet=Read-Host -Prompt "What does the character wear on $cha_gender_spec2 feet"
                    $cha_relationship=Read-Host -Prompt "Who is $cha_name dating (if anyone)"
                    $cha_family=Read-Host -Prompt "Who is in $cha_name's family (if anyone)"
                    $cha_friends=Read-Host -Prompt "Who are $cha_name's friends (if anyone)"
    #New-Item "$cha_name (Character).txt" -ItemType File -Force
    # Divided into: 1. Physical Appearance, 2. Clothing Appearance, 3. Personality, 4. Relationships, and 5. Biography & Housing.
    Write-Host "$cha_name is a $cha_age $cha_gender $cha_species, and has $cha_color $cha_skin_fur, along with $cha_hair $cha_hair_color hair. $cha_gender_spec is $cha_height in height, and $cha_weight in weight.`n`n$cha_name wears a $cha_clothing_head on $cha_gender_spec2 head, a $cha_clothing_upper_body on $cha_gender_spec2 upper body, $cha_clothing_lower_body on $cha_gender_spec2 lower body, and $cha_shoe_color $cha_clothing_feet.`n`n$cha_name is generally $cha_personality, and they are $cha_traits as well. $cha_gender_spec likes $cha_likes, but dislikes $cha_dislikes. $cha_gender_spec is also afraid of $cha_fears.`n`n$cha_name is $cha_gender_pref, and is currently in a relationship with $cha_relationship. $cha_gender_spec2_c's family is: $cha_family; and $cha_gender_spec2 friends are: $cha_friends.`n`n"
}

#if ($cha_itm_loc -eq 'item') {
#    $item_name=Read-Host -Prompt "Enter the name of the item"
#    $item_appearance=Read-Host -Prompt "Describe the appearance of the $item_name (example: the mushroom has a tan bottom, and a green top with polka-dots.)"
#    $item_properties=Read-Host -Prompt "Describe the properties of the $item_name (example: if you eat the green mushroom, it grants you an extra life.)"
#}

#if ($cha_itm_loc -eq 'location') {
#    $loc_name=Read-Host -Prompt "Enter the name of the location"
#}

pause
