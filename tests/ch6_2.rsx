#[cfg(test)]
mod tests {
    // enum Option<T> {
    //     None,
    //     Some(T),
    // }

    #[test]
    fn test() {
        let value: Option<u32> = Some(5);
        let result = match value {
            Some(i) => Some(i + 1),
            None => None,
            // _ => (),
        };
        assert_eq!(result, Some(6));
        assert_eq!(result.unwrap(), 6);
    }
}