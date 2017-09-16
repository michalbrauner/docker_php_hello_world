<?php

class HelloWorldTest extends PHPUnit_Framework_TestCase
{

    public function testGetHelloWithNonEmptyName()
    {
        $name = 'John';

        $helloWorld = new HelloWorld($name);
        $this->assertEquals(sprintf('Hello %s', $name), $helloWorld->getHello());
    }

    public function testGetHelloWithEmptyName()
    {
        $this->expectException(InvalidArgumentException::class);
        $this->expectExceptionMessage('Invalid name - it could not be empty');

        $helloWorld = new HelloWorld('');
        $helloWorld->getHello();
    }

}
