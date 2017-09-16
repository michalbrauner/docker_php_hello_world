<?php

class HelloWorld
{

    /**
     * @var string
     */
    private $name;

    /**
     * @param string $name
     */
    public function __construct(string $name)
    {
        if ($name === '') {
            throw new InvalidArgumentException('Invalid name - it could not be empty');
        }

        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getHello(): string
    {
        return sprintf('Hello %s', $this->name);
    }

}
