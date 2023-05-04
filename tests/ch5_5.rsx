#[cfg(test)]
mod tests {
    #[derive(Debug)]
    struct Color(i32, i32, i32);

    impl PartialEq for Color {
        fn eq(&self, other: &Self) -> bool {
            self.0 == other.0 && self.1 == other.1 && self.2 == other.2
        }
    }

    #[test]
    fn test() {
        let color1 = Color(125, 125, 125);
        let color2 = Color(125, 125, 125);

        assert_eq!(color1, color2);
    }
}