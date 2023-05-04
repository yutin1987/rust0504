#[cfg(test)]
mod tests {
    #[derive(Debug)]
    struct Rectangle {
        width: u32,
        height: u32,
    }

    impl Rectangle {
        fn area(&self) -> u32 {
            self.width * self.height
        }
    }

    #[test]
    fn test() {
        let rectangle = Rectangle{ width: 10, height: 20 };

        assert_eq!(rectangle.area(), 200);
    }
}