<?php

namespace Bolt\Extension\Europeana\Structure\Field;

use Bolt\Field\FieldInterface;

/**
 * Custom field type class for use in ContentTypes.
 *
 * @author Your Name <you@example.com>
 */
class StructureField implements FieldInterface
{
    /**
     * Returns the name of the field.
     *
     * @return string The field name
     */
    public function getName()
    {
        return 'structurefield';
    }

    /**
     * Returns the path to the template.
     *
     * (You can put them into templates/twig because we registered the folder as Twig source)
     *
     * @return string The template name
     */
    public function getTemplate()
    {
        return '_structurefield.twig';
    }

    /**
     * Returns the storage type.
     *
     * @return string A Valid Storage Type
     */
    public function getStorageType()
    {
        return 'text';
    }

    /**
     * Returns additional options to be passed to the storage field.
     *
     * @return array An array of options
     */
    public function getStorageOptions()
    {
        return ['default' => ''];
    }
}
