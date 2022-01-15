import { render, screen } from '@testing-library/react';
import App, {sayHi } from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

test('say Hi says hi by default', () => {
  const result = sayHi();
  expect(result).toEqual('Hi');
})
